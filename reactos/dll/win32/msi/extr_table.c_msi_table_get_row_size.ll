; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_table_get_row_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_table_get_row_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@LONG_STR_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_4__*, i64, i64)* @msi_table_get_row_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_table_get_row_size(i32* %0, %struct.TYPE_4__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %52

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @LONG_STR_BYTES, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @bytes_per_column(i32* %26, %struct.TYPE_4__* %29, i64 %30)
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %11, align 8
  br label %21

37:                                               ; preds = %21
  %38 = load i64, i64* %12, align 8
  store i64 %38, i64* %5, align 8
  br label %52

39:                                               ; preds = %16
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %10, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @bytes_per_column(i32* %47, %struct.TYPE_4__* %48, i64 %49)
  %51 = add i64 %46, %50
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %39, %37, %15
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i64 @bytes_per_column(i32*, %struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
