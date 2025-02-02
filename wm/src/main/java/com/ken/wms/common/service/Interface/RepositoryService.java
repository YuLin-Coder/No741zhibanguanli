package com.ken.wms.common.service.Interface;


import com.ken.wms.domain.Repository;
import com.ken.wms.exception.RepositoryManageServiceException;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;
import java.util.Map;

/**
 * 值班信息管理 service
 */
public interface RepositoryService {

    /**
     * 返回指定 repository ID 的值班记录
     *
     * @param repositoryId 值班ID
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectById(Integer repositoryId) throws RepositoryManageServiceException;

    /**
     * 返回指定 repository address 的值班记录
     * 支持查询分页以及模糊查询
     *
     * @param offset  分页的偏移值
     * @param limit   分页的大小
     * @param address 值班的地址
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectByAddress(int offset, int limit, String address) throws RepositoryManageServiceException;

    /**
     * 返回指定 repository address 的值班记录
     * 支持模糊查询
     *
     * @param address 值班名称
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectByAddress(String address) throws RepositoryManageServiceException;

    /**
     * 分页查询值班记录
     *
     * @param offset 分页的偏移值
     * @param limit  分页的大小
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectAll(int offset, int limit) throws RepositoryManageServiceException;

    /**
     * 查询所有的值班记录
     *
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectAll() throws RepositoryManageServiceException;

    /**
     * 查询所有未指派值班管理员的值班记录
     *
     * @return 结果的一个Map，其中： key为 data 的代表记录数据；key 为 total 代表结果记录的数量
     */
    Map<String, Object> selectUnassign() throws RepositoryManageServiceException;

    /**
     * 添加值班记录
     *
     * @param repository 值班信息
     * @return 返回一个boolean值，值为true代表更新成功，否则代表失败
     */
    boolean addRepository(Repository repository) throws RepositoryManageServiceException;

    /**
     * 更新值班记录
     *
     * @param repository 值班信息
     * @return 返回一个boolean值，值为true代表更新成功，否则代表失败
     */
    boolean updateRepository(Repository repository) throws RepositoryManageServiceException;

    /**
     * 删除值班记录
     *
     * @param repositoryId 值班ID
     * @return 返回一个boolean值，值为true代表更新成功，否则代表失败
     */
    boolean deleteRepository(Integer repositoryId) throws RepositoryManageServiceException;

    /**
     * 从文件中导入值班信息
     *
     * @param file 导入信息的文件
     * @return 返回一个Map，其中：key为total代表导入的总记录数，key为available代表有效导入的记录数
     */
    Map<String, Object> importRepository(MultipartFile file) throws RepositoryManageServiceException;

    /**
     * 导出值班信息到文件中
     *
     * @param repositories 包含若干条 Supplier 信息的 List
     * @return excel 文件
     */
    File exportRepository(List<Repository> repositories);
}
