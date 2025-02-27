; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_buf_sparse.c_buf_sparse_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_buf_sparse.c_buf_sparse_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_sparse_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @buf_sparse_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buf_sparse_write(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buf_sparse_priv*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.buf_sparse_priv* @get_priv_sparse(i32* %9)
  store %struct.buf_sparse_priv* %10, %struct.buf_sparse_priv** %7, align 8
  %11 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %7, align 8
  %12 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %7, align 8
  %15 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @sparse_write(i32 %13, i32 %16, i32* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.buf_sparse_priv*, %struct.buf_sparse_priv** %7, align 8
  %22 = getelementptr inbounds %struct.buf_sparse_priv, %struct.buf_sparse_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load i64, i64* %8, align 8
  ret i64 %27
}

declare dso_local %struct.buf_sparse_priv* @get_priv_sparse(i32*) #1

declare dso_local i64 @sparse_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
