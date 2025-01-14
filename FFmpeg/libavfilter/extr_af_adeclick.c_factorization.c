
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int factorization(double *matrix, int n)
{
    int i, j, k;

    for (i = 0; i < n; i++) {
        const int in = i * n;
        double value;

        value = matrix[in + i];
        for (j = 0; j < i; j++)
            value -= matrix[j * n + j] * matrix[in + j] * matrix[in + j];

        if (value == 0.) {
            return -1;
        }

        matrix[in + i] = value;
        for (j = i + 1; j < n; j++) {
            const int jn = j * n;
            double x;

            x = matrix[jn + i];
            for (k = 0; k < i; k++)
                x -= matrix[k * n + k] * matrix[in + k] * matrix[jn + k];
            matrix[jn + i] = x / matrix[in + i];
        }
    }

    return 0;
}
