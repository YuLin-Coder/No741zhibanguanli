package com.ken.wms.dao;

import com.ken.wms.domain.RepositoryAdmin;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * RepositoryAdmin 映射器
 *
 */
@Repository
public interface RepositoryAdminMapper {

	/**
	 * 选择指定 ID 的值班管理员信息
	 * @param id 值班管理员ID
	 * @return 返回指定 ID 的值班管理员信息
	 */
	RepositoryAdmin selectByID(Integer id);
	
	/**
	 * 选择指定 name 的值班管理员信息。
	 * 支持模糊查找
	 * @param name 值班管理员名字
	 * @return 返回若干条指定 name 的值班管理员信息
	 */
	List<RepositoryAdmin> selectByName(String name);
	
	/**
	 * 选择所有的值班管理员信息
	 * @return 返回所有的值班管理员信息
	 */
	List<RepositoryAdmin> selectAll();
	
	/**
	 * 选择已指派指定 repositoryID 的值班管理员信息
	 * @param repositoryID 指派的值班ID
	 * @return 返回已指派指定 repositoryID 的值班管理员信息
	 */
	RepositoryAdmin selectByRepositoryID(Integer repositoryID);
	
	/**
	 * 插入一条值班管理员信息
	 * @param repositoryAdmin 值班管理员信息
	 */
	void insert(RepositoryAdmin repositoryAdmin);
	
	/**
	 * 批量插入值班管理员信息
	 * @param repositoryAdmins 存放若干条值班管理员信息的 List
	 */
	void insertBatch(List<RepositoryAdmin> repositoryAdmins);
	
	/**
	 * 更新值班管理员信息
	 * @param repositoryAdmin 值班管理员信息
	 */
	void update(RepositoryAdmin repositoryAdmin);
	
	/**
	 * 删除指定 ID 的值班管理员信息
	 * @param id 值班管理员 ID
	 */
	void deleteByID(Integer id);
}
