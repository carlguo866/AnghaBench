; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_modalias_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_modalias_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.device_node = type { i32 }

@of_modalias_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_modalias_node(%struct.device_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %39, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @of_modalias_table, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @of_modalias_table, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @of_device_is_compatible(%struct.device_node* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %39

29:                                               ; preds = %17
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @of_modalias_table, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @strlcpy(i8* %30, i8* %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %65

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = call i8* @of_get_property(%struct.device_node* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %65

50:                                               ; preds = %42
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 44)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %50
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @strlcpy(i8* %61, i8* %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %55, %47, %29
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
