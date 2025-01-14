; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_ctrls_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_ctrls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.hantro_dev = type { i32 }
%struct.hantro_ctx = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@controls = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Adding control (%d) failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hantro_dev*, %struct.hantro_ctx*, i32)* @hantro_ctrls_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_ctrls_setup(%struct.hantro_dev* %0, %struct.hantro_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hantro_dev*, align 8
  %6 = alloca %struct.hantro_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hantro_dev* %0, %struct.hantro_dev** %5, align 8
  store %struct.hantro_ctx* %1, %struct.hantro_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @controls, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %13, i32 %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %66, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @controls, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %21, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %66

31:                                               ; preds = %20
  %32 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @controls, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_8__* %33, %struct.TYPE_9__* %38, i32* null)
  %40 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %31
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @controls, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @vpu_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %58, i32 0, i32 0
  %60 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__* %59)
  %61 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %31
  br label %66

66:                                               ; preds = %65, %30
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %16

69:                                               ; preds = %16
  %70 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %70, i32 0, i32 0
  %72 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %45
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.TYPE_8__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @vpu_err(i8*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
