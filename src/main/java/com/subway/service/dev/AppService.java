package com.subway.service.dev;

import com.subway.dao.dev.AppRepository;
import com.subway.domain.dev.App;
import com.subway.object.ReturnObject;
import com.subway.service.app.BaseService;
import com.subway.service.commonData.CommonDataService;
import com.subway.tableColumnConfig.TableColumnConfig;
import com.subway.tableColumnConfig.TableColumnConfigRepository;
import com.subway.tableConfig.TableConfig;
import com.subway.utils.ConstantUtils;
import com.subway.utils.autoCode.AutoGenerationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;

import static com.subway.utils.ConstantUtils.*;

/**
 * 应用信息接口
 */
@Service
public class AppService extends BaseService {
    @Autowired
    AppRepository appRepository;

    @Autowired
    TableColumnConfigRepository tableColumnConfigRepository;

    @Autowired
    CommonDataService commonDataService;


    @Autowired
    AutoGenerationService autoGenerationService;

    /**
     * @param id
     * @return 根据ID查询应用
     */
    public App findById(Long id) {
        return appRepository.findById(id);
    }


    /**
     * @return 查询所有的应用
     */
    public List<App> findAll() {
        return appRepository.findAll();
    }


    /**
     * @param app
     * @return 保存应用信息
     */
    public ReturnObject save(App app) {
        app = appRepository.save(app);
        return commonDataService.getReturnType(app != null, SAVE_SUCCESS, SAVE_FAILURE);
    }


    /**
     * @param id 自动编码
     */
    public Boolean autoCode(Long id) {
        boolean result = false;
        App app = appRepository.findById(id);
        TableConfig tableConfig = app.getTableConfig();
        List<TableColumnConfig> tableColumnConfigList = tableColumnConfigRepository.findByTableConfigAndStatus(tableConfig, ConstantUtils.STATUS_YES);
        String templateDir = GEN_FILE_PATH + "src/main/resources/templates";
        String autoGeneratedFile = GEN_FILE_PATH + "src/main/java/" + app.getTableConfig().getDomainName();
        try {
            autoGenerationService.genCode(app, templateDir, autoGeneratedFile, tableColumnConfigList);
            File file = new File(autoGeneratedFile);
            if (!file.exists()) {
                result = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
