; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_getk_touch.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_getk_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@YRMCDS_CMD_GATKQ = common dso_local global i32 0, align 4
@YRMCDS_CMD_GATK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_getk_touch(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [4 x i8], align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %6
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17, %6
  %24 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %24, i32* %7, align 4
  br label %50

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @YRMCDS_NOT_IMPLEMENTED, align 4
  store i32 %31, i32* %7, align 4
  br label %50

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %35 = call i32 @hton32(i32 %33, i8* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @YRMCDS_CMD_GATKQ, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @YRMCDS_CMD_GATK, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %49 = call i32 @send_command(%struct.TYPE_4__* %36, i32 %44, i32 0, i32* %45, i64 %46, i8* %47, i32 4, i8* %48, i32 0, i32* null)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %30, %23
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @hton32(i32, i8*) #1

declare dso_local i32 @send_command(%struct.TYPE_4__*, i32, i32, i32*, i64, i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
