; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_vartype.c_VARIANT_NumberFromBstr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_vartype.c_VARIANT_NumberFromBstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@NUMPRS_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i32)* @VARIANT_NumberFromBstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VARIANT_NumberFromBstr(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca [1024 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @NUMPRS_STD, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %24 = call i32 @VarParseNumFromStr(i32* %20, i32 %21, i32 %22, %struct.TYPE_4__* %13, i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @SUCCEEDED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %5
  %29 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 1, %30
  %32 = call i32 @VarNumFromParseNum(%struct.TYPE_4__* %13, i32* %29, i32 %31, i32* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @SUCCEEDED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @VARIANT_CopyData(i32* %11, i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %36, %28
  br label %41

41:                                               ; preds = %40, %5
  %42 = load i32, i32* %12, align 4
  ret i32 %42
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @VarParseNumFromStr(i32*, i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @VarNumFromParseNum(%struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local i32 @VARIANT_CopyData(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
