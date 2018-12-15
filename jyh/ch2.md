# 第二章  多元线性回归模型设定

总体回归模型刻画了被解释变量与解释变量之间客观真实的回归关系，它的一般形式为：

$$ Y = f(X_1,\cdots, X_k)+\epsilon$$

如果假定$f$为线性，就得到了多元线性回归模型：

$$Y=\beta_1 X_1 + \cdots + \beta_k X_k +\epsilon$$

其中，$Y$以及$X_1,\cdots, X_k$是可观测的随机变量（注：古典模型中$X$被认为是非随机的）。一般情况下$X_1=1$，代表常数项，真正的解释变量个数为$K-1$。$\beta_1,\cdots,\beta_k$称为总体参数，它们是客观存在的，但永远是未知的，只能用数据对其进行估计。$\beta_1$称为截距项，$\beta_2,\cdots,\beta_k$称为斜率。如果模型不含常数项$X_1$，也就是说不含截距项$\beta_1$，称之为无截距模型。注意，$\beta_k$是有量纲（单位）的量。

上述模型无论对变量还是对参数都是线性的。线性回归中所说的“线性”，是指求解参数估计值的正规方程组是线性的，而不是指$Y$对$X$是线性的。

$\epsilon$是（加性）随机扰动项，将因变量分解为系统部分与非系统部分。随机扰动项主要反映了省略变量、非线性近似、测量误差以及不可观测的随机影响。所有影响$Y$但未包含在模型系统部分的因素都包含在$\epsilon$中。

如果该模型反映了$Y$与$X$之间的因果关系时，称之为结构模型。

我们的任务就是利用样本数据对总体回归模型中的参数进行估计。给定容量为$n$的样本，记$(Y_i,X_{i2},\cdots,X_{ik})$为第$i$个观测点，$i=1,2,\cdots,n$。可以用几种形式来表示总体回归模型的样本形式。

- 观测值形式：

  $$Y_i = \beta_1 X_{i1}+\beta_2 X_{i2}+\cdots+\beta_k X_{ik}+\epsilon_i$$

  其中，$X_{i1}=1$；或者写成：

  $$Y_i = \beta_1 +\beta_2 X_{i2}+\cdots+\beta_k X_{ik}+\epsilon_i$$

- 矩阵形式：
  $$
  \left[
      \begin{matrix}
      Y_1 \\
      \vdots \\
      Y_n
      \end{matrix}
  \right]
  =
  \left[
      \begin{matrix}
      X_{11} & X_{12} & \cdots & X_{1K} \\
      \vdots & \vdots &        & \vdots \\
      X_{n1} & X_{n2} & \cdots & X_{nK}
      \end{matrix}
  \right]
  \left[
      \begin{matrix}
      \beta_1 \\
      \vdots \\
      \beta_K
      \end{matrix}
  \right]
  +
  \left[
      \begin{matrix}
      \epsilon_1 \\
      \vdots \\
      \epsilon_n
      \end{matrix}
  \right]
  $$
  利用矩阵符号表示为：
  $$
  \boldsymbol{Y}=\boldsymbol{X}\boldsymbol{\beta}+ \boldsymbol{\epsilon}
  $$
  其中，$\boldsymbol{Y}$为$n$维列向量，$\boldsymbol{X}$是$n\times K$阶矩阵，$\boldsymbol{\beta}$为$K$维列向量，$\boldsymbol{\epsilon}$为$n$维列向量。

- 列向量组形式：

  如果将矩阵$\boldsymbol{X}$写成列向量的形式：$\boldsymbol{X}=[\boldsymbol{x}_1,\cdots,\boldsymbol{x_K}]$，则总体回归模型可以写成：

  $$\boldsymbol{Y}=[\boldsymbol{x}_1,\cdots,\boldsymbol{x_K}]\left[
  \begin{matrix}
  \beta_1 \\
  \vdots \\
  \beta_K
  \end{matrix}
  \right] +\boldsymbol{\epsilon}$$

  即：$$\boldsymbol{Y}=\boldsymbol{x}_1\beta_1+\cdots+\boldsymbol{x_K}\beta_K +\boldsymbol{\epsilon}$$，其中：

  $$\boldsymbol{x}_k=\left[
  \begin{matrix}
  X_{1k} \\
  \vdots \\
  X_{nk}
  \end{matrix}\right],\quad k=1,2,\cdots,K$$

  为第$k$个解释变量的$n$个观测值构成的$n$维列向量。

- 行向量组形式：

  如果将矩阵$\boldsymbol{X}$写成行向量的形式：

  $$\boldsymbol{X}=\left[\begin{matrix}
  {\boldsymbol{x}^1}' \\
  \vdots \\
  {\boldsymbol{x}^n}'
  \end{matrix}\right]$$，

  则总体回归模型可以写成：