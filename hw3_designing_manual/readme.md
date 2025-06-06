#### 基于LLM的医学问答RAG

1. QA的精准实现**基本功能**实现代码位于test.py文件，完整QA部分的代码由于项目仍在开发未提供。
2. 能够实现根据**上下文有限信息**在医学领域进行检索
3. 能够正确的**处理无关信息**以减少对于检索的干扰、LLM的“幻觉”。
4. 能够根据Embase 和 WHO Guidelines语料库的信息，以及爬取的10000条欧盟官网的药品数据，给用户提供专业的，准确的诊断结果和药品建议，符合临床实际。
5. 最终以整合的规范化“诊断报告书”形式呈现，更加清晰易读。

#### 数据集

1. 这里只从全部数据集中挑选了**一部分**常见的药品数据和临床处理办法，用于**测试**医学QA的效果。
2. 论文中提到的Embase 和 WHO Guidelines是两个大型开源语料库，这里没有直接提供。
3. 爬取的10000条欧盟官网的药品数据集过大，没有直接提供。
4. 数据集进行过**人工标注**，且可以通过网页不断收集更新。

#### Web开发

1. 前端的框架来源于网络，具体图标和素材由本人自行设计添加（可查看素材文件）。
2. 功能自行设计完善，对应功能绑定数据库，便于实时更新（若联网），展示demo仅基于我提交的部分数据集。

#### Demo（时间-内容）

0:00-1:40 界面展示和相关数据形式、数据库展示。

1:50-3:10 药品和疾病相关数据在网页端的添加，和数据库绑定同步更新信息。

3:25-3:46 爬取欧盟EMA药品数据库的10000条数据，后续会进行翻译和人工标注。

3:47-4:18 QA过程的对话信息展示（右侧的大图是将**终端的信息**复制在记事本放大展示便于观看，与终端显示信息一致）。

4:20-4:35 将代码接入网页，规范输出形式和交互方式，模拟对话场景，检验对话内容专业、准确、符合临床实际（右侧的大图是将**“Answer”的信息**复制在记事本放大展示便于观看，与对话框中显示的最终的**诊断书**信息一致）。

#### 论文动机

1. 在和LLM的对话中发现无法提供准确的药物信息和临床诊断，只能提供一些正确性未知的分析和建议。
2. LLM在回答单一领域的问题时易受到其他不相关信息的干扰，如何去过滤掉无关信息是需要解决的问题。
3. LLM在医学方面的Answer具有明显的偏向性，和预训练数据有关。
4. 市面上现有的AI医生问答效果都不理想。
5. 研究过这方面的知识，目前也在进行相关工作。
6. 了解Agent相关的理论知识，具备一定的开发能力。
7. 有合适的前端框架可以使用（但这个框架还蛮难用的）。