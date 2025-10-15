markdown
# 🎮 跑团状态合并协议 v1.1
🔄 通用差分合并模板

## 📋 合并模式说明

### 🎯 两种输出模式
| 模式 | 指令关键词 | 输出内容 | 适用场景 |
|------|------------|----------|----------|
| **完整合并** | `完整合并` | 保持原结构60kb+完整存档 | 新会话载入、长期存档 |
| **差分摘要** | `差分合并` | 仅合并摘要+变更报告 | 进度追踪、快速更新 |

## 🚀 合并指令格式

### 完整合并模式
**完整合并指令**:
merge_complete
base: [基础存档文件名]
diffs: [差分存档文件名列表]
output: [输出文件名]
validation: strict
timestamp: [时间戳]

text

**示例**:
merge_complete
base: 存档v6.3a.md
diffs: [存档v6.3a_d14.md, 存档v6.3a_d15.md]
output: 存档v6.3a_merged.md
validation: strict
timestamp: 20250911_1730

text

### 差分摘要模式
**差分合并指令**:
merge_diff
base: [基础存档文件名]
diffs: [差分存档文件名列表]
output: [输出文件名]
mode: summary_only

text

**示例**:
merge_diff
base: 存档v6.3a.md
diffs: [存档v6.3a_d14.md, 存档v6.3a_d15.md]
output: 合并报告_d14-d15.md
mode: summary_only

text

## 🔄 差分合并报告
**合并操作ID**: `MERGE_${TIMESTAMP}_${HASH}`
**基础版本**: ${BASE_VERSION}
**合并版本**: ${DIFF_VERSIONS}
**合并时间**: ${CURRENT_DATETIME}
**完整性校验**: ${VALIDATION_HASH}

### 🎯 合并原则验证
| 原则 | 状态 | 校验结果 |
|------|------|----------|
| **存在保护** | ✅ | PC连续性保全确认 |
| **创造支持** | ✅ | 新增内容无损继承 |
| **合理演进** | ✅ | 差分逻辑严格验证 |

## ⚙️ 区块操作指令集

### 📊 区块操作记录
| 操作 | 目标区块 | 内容摘要 | 版本标记 |
|------|----------|----------|----------|
| UPDATE | `## 🕐 当前状态` | 时间推进+状态更新 | v${NEW} |
| UPDATE | `## 🎭 核心关系` | 关系动能调整 | v${NEW} |
| INSERT | `## 🧩 新增系统` | 新增梦境清单 | v${NEW} |
| DELETE | `## 🗑️ 过期内容` | 移除已完成事项 | v${NEW} |

## 🎮 核心状态合并协议

### ⏰ 时间线合并
**基础状态**: ${BASE_TIME}
**差分更新**: ${DIFF_TIME}
**合并结果**: ${MERGED_TIME}
**连续性校验**: ✅ 时间流连贯

### 💝 关系动能合并
| 角色 | 基础值 | 差分值 | 合并值 | 趋势 |
|------|--------|--------|--------|------|
| 川上纱英 | 95% | 85% | 85% | ↓ |
| 清水结衣 | 40% | 55% | 55% | ↑ |
| 藤井夏希 | 90% | 88% | 88% | → |

### 📈 项目进度合并  
| 项目 | 基础进度 | 差分进度 | 合并进度 | 阻塞状态 |
|------|----------|----------|----------|----------|
| 游戏Demo | 18% | 20% | 20% | 川上未激活 |
| 棒球备战 | 40% | 45% | 45% | 早坂引入中 |

## 🔍 完整性验证系统

### ✅ 合并完整性检查清单
- [ ] **时间连续性**: 基础→差分时间流逻辑验证
- [ ] **数值守恒**: 关系动能+项目进度数值逻辑校验
- [ ] **资源平衡**: 资金+叙事点收支平衡确认
- [ ] **记忆连贯**: 核心记忆锚点连续性维护
- [ ] **黑箱安全**: 加密数据完整性保护
- [ ] **依赖解析**: 项目阻塞关系依赖验证

## 🛡️ 冲突解决协议

### ⚠️ 冲突解决规则
#### 优先级规则
1. **时间优先**: 最新时间戳内容优先
2. **完整性优先**: 完整描述覆盖片段描述  
3. **特异性优先**: 具体数值覆盖模糊描述

#### 冲突标记格式
冲突点: ${CONFLICT_DESCRIPTION}
基础值: ${BASE_VALUE}
差分值: ${DIFF_VALUE}
解决策略: ${RESOLUTION_STRATEGY}
最终值: ${RESOLVED_VALUE}

text

## 📁 多文档合并协议

### 🔗 多差分文档合并
#### 合并顺序
1. `${BASE_FILE}` (基础存档)
2. `${DIFF_1}` (最早差分)
3. `${DIFF_2}` (中间差分) 
4. `${DIFF_N}` (最新差分)

#### 版本链验证
版本链: ${BASE} → ${DIFF_1} → ${DIFF_2} → ${MERGED}
连续性: ✅ 每个差分都基于前一个版本
完整性: ✅ 无缺失环节

text

## 🎯 新会话载入协议

### 🚀 新会话启动指令
load_archive
operation: merge_load
base_version: ${BASE_VERSION}
diff_versions: ${DIFF_VERSIONS}
merged_version: ${MERGED_VERSION}
validation_hash: ${HASH}
principles_verified: true
load_timestamp: ${TIMESTAMP}
status: ready_for_play

text

## 💾 合并存档输出格式

### 完整合并模式输出
🎮 跑团状态 ${MERGED_VERSION}
[完整的60kb+存档内容，保持原结构]

🔄 合并元数据
合并ID: ${MERGE_ID}
基础版本: ${BASE_VERSION}
差分来源: ${DIFF_SOURCES}
校验哈希: ${VALIDATION_HASH}
合并时间: ${MERGE_TIMESTAMP}
完整性验证: ✅ 通过

text

### 差分摘要模式输出
📊 合并报告 ${MERGE_ID}
🔄 合并概览
基础版本: ${BASE_VERSION}
合并版本: ${DIFF_VERSIONS}
合并时间: ${MERGE_TIMESTAMP}

📈 关键变更摘要
${CHANGE_SUMMARY}

🎯 下一阶段重点
${NEXT_PRIORITIES}

此为差分摘要报告，完整存档请载入合并后的完整文件

text

## ⚡ 快速合并指令集

### 单差分合并
🔄 快速合并: ${BASE} + ${DIFF}
merge_operation
action: single_diff_merge
base: ${BASE_FILE}
diff: ${DIFF_FILE}
output: ${MERGED_FILE}
validation: strict

text

### 多差分合并
🔄 链式合并: ${BASE} + ${DIFFS}
merge_operation
action: chain_merge
base: ${BASE_FILE}
diffs: [${DIFF_1}, ${DIFF_2}, ${DIFF_3}]
output: ${MERGED_FILE}
validation: strict

text

### 验证指令
✅ 合并验证命令
validate_merge
file: ${MERGED_FILE}
checkpoints: [time_continuity, value_logic, resource_balance, memory_coherence]
expected_hash: ${EXPECTED_HASH}

text

## 🎯 使用示例

### 基本合并流程
1. **选择模式**: 决定使用`完整合并`或`差分合并`
2. **载入基础存档**: `v6.3a.md`
3. **应用差分存档**: `v6.3a_d14.md`, `v6.3a_d15.md`  
4. **执行合并验证**: 检查完整性清单
5. **输出合并结果**: 根据模式输出相应文件
6. **新会话载入**: 使用合并存档继续跑团

### 完整合并示例
merge_complete
base: 存档v6.3a.md
diffs: [存档v6.3a_d14.md, 存档v6.3a_d15.md]
output: 存档v6.3a_merged.md
validation: strict
timestamp: auto

text

### 差分合并示例
merge_diff
base: 存档v6.3a.md
diffs: [存档v6.3a_d14.md, 存档v6.3a_d15.md]
output: 合并报告_d14-d15.md
mode: summary_only

text

### 冲突解决示例
冲突点: 川上纱英关系动能
基础值: 95% (破冰临界)
差分值: 85% (动能释放)
解决策略: 时间优先 - 采用最新差分值
最终值: 85% (破冰后动能正常化)

text

## 📝 最佳实践指南

### 完整合并适用场景
- 新游戏会话开始前
- 重要里程碑节点存档
- 长期备份和版本管理
- 需要完整状态参考时

### 差分合并适用场景  
- 日常进度追踪
- 快速状态更新查看
- 变更记录和审计
- 轻量级进度同步

### 版本命名规范
- 基础版本: `存档vX.X.md`
- 差分版本: `存档vX.X_d[天数].md`
- 合并版本: `存档vX.X_merged.md`
- 合并报告: `合并报告_[日期范围].md`

### 文件保存说明
**复制粘贴方法**:
1. 全选此文档内容
2. 粘贴到文本编辑器
3. 保存为 `.md` 文件
4. 确保编码为 UTF-8

**直接下载**:
- 将此回复内容完整保存为 `跑团状态合并协议_v1.1.md`
- 确保文件扩展名为 `.md`
- 用 Markdown 阅读器打开验证格式