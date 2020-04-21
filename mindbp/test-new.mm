<map version="1.0.1">
<node TEXT="BP STEPS">
<node TEXT="赋值">
<node TEXT="ASSIGN">
<node TEXT="值或表达式"></node>
<node TEXT="数据字典的值"></node>
<node TEXT="状态字典的值"></node>
<node TEXT="任意的项目值"></node>
<node TEXT="xml 的值"></node></node></node>
<node TEXT="控制">
<node TEXT="AUTOENV">
<node TEXT="直接调用 Auto controls 的 6 个控制项"></node></node>
<node TEXT="SETCONTROL">
<node TEXT="控制单个变量"></node>
<node TEXT="利用 LOOP 控制多个变量"></node></node>
<node TEXT="TABLE">
<node TEXT="作为循环的控制项"></node></node></node>
<node TEXT="记录">
<node TEXT="LOG">
<node TEXT="打开数据文件"></node>
<node TEXT="记录remark"></node>
<node TEXT="记录数据及匹配的选择"></node>
<node TEXT="关闭数据文件"></node></node></node>
<node TEXT="匹配">
<node TEXT="LOG">
<node TEXT="选择匹配的方式"></node></node>
<node TEXT="WAIT">
<node TEXT="early match 进行匹配"></node></node></node>
<node TEXT="循环或条件判断">
<node TEXT="IF, ELSE IF, ELSE">
<node TEXT="条件判断后执行相关命令"></node></node>
<node TEXT="LOOP">
<node TEXT="按次数循环"></node>
<node TEXT="按持续时间循环"></node>
<node TEXT="按列表循环"></node>
<node TEXT="按文件的行循环"></node></node>
<node TEXT="WHILE">
<node TEXT="条件判断为 True 时执行相关命令"></node></node></node>
<node TEXT="容器">
<node TEXT="GROUP">
<node TEXT="steps 的容器，可设定是否执行"></node></node></node>
<node TEXT="执行或调用">
<node TEXT="RUN">
<node TEXT="运行另一个 BP"></node></node>
<node TEXT="EXEC">
<node TEXT="在 source 输入框内执行 exec()">
<node TEXT="local 变量在程序执行时可获得"></node>
<node TEXT="global 变量在整个程序中均可获得"></node></node></node></node>
<node TEXT="退出">
<node TEXT="RETRURN">
<node TEXT="退出 DEIFINE 或主程序"></node></node>
<node TEXT="BREAK">
<node TEXT="退出 LOOP 或 WHILE"></node></node></node>
<node TEXT="打印或显示">
<node TEXT="SHOW">
<node TEXT="将变量显示在日志"></node></node>
<node TEXT="PROPERTIES">
<node TEXT="决定是否显示运行日志"></node></node></node>
<node TEXT="调用或定义">
<node TEXT="DEFINE">
<node TEXT="本质为定义函数"></node></node>
<node TEXT="CALL">
<node TEXT="运行定义的函数"></node></node></node>
<node TEXT="等待">
<node TEXT="WAIT">
<node TEXT="Duration 等待一段时间"></node>
<node TEXT="Stabiltiy 等待稳定">
<node TEXT="最大最小等待时间"></node>
<node TEXT="Cr 或 Hs 稳定"></node></node>
<node TEXT="Until 等待到某个日期的特定时间点"></node>
<node TEXT="Event 等待某一事件为 True"></node></node>
<node TEXT="PROPERTIES">
<node TEXT="程序的暂停"></node></node></node>
<node TEXT="交互">
<node TEXT="DIALOG">
<node TEXT="Grid items 输入变量名或值">
<node TEXT="check box 适合 True 或 False变量"></node>
<node TEXT="Dropdown list 从下拉列表选择变量"></node>
<node TEXT="Edit box 适合字符或值"></node>
<node TEXT="Radio box 适合小范围的选择"></node>
<node TEXT="Text 不可编辑的字符"></node>
<node TEXT="Table 与 Text summary">
<node TEXT="Table 可编辑对话框"></node>
<node TEXT="Text summary 不可编辑对话框"></node></node></node></node>
<node TEXT="_dlg variables 避免两个 dialog 冲突">
<node TEXT="ASSIGN 的 Dialog interface"></node>
<node TEXT="TABLE 的 Dialog interface"></node></node></node>
</node></map>
