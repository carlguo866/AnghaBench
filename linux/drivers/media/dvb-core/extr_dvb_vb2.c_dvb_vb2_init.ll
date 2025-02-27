; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_vb2.c_dvb_vb2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_vb2_ctx = type { i32, i32, i32, i32, i32, i32, %struct.vb2_queue }
%struct.vb2_queue = type { i32, i32, i64, i32*, i32*, i32*, %struct.dvb_vb2_ctx*, i32, i64, i32 }

@DVB_BUF_TYPE_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@dvb_vb2_qops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@dvb_vb2_buf_ops = common dso_local global i32 0, align 4
@DVB_VB2_STATE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"[%s] errno=%d\0A\00", align 1
@DVB_VB2_NAME_MAX = common dso_local global i32 0, align 4
@DVB_VB2_STATE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_vb2_init(%struct.dvb_vb2_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_vb2_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vb2_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_vb2_ctx* %0, %struct.dvb_vb2_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %10, i32 0, i32 6
  store %struct.vb2_queue* %11, %struct.vb2_queue** %8, align 8
  %12 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %13 = call i32 @memset(%struct.dvb_vb2_ctx* %12, i32 0, i32 96)
  %14 = load i32, i32* @DVB_BUF_TYPE_CAPTURE, align 4
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 8
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @VB2_MMAP, align 4
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 6
  store %struct.dvb_vb2_ctx* %22, %struct.dvb_vb2_ctx** %24, align 8
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %30 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %29, i32 0, i32 5
  store i32* @dvb_vb2_qops, i32** %30, align 8
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 4
  store i32* @vb2_vmalloc_memops, i32** %32, align 8
  %33 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %34 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %33, i32 0, i32 3
  store i32* @dvb_vb2_buf_ops, i32** %34, align 8
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %38 = call i32 @vb2_core_queue_init(%struct.vb2_queue* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %3
  %42 = load i32, i32* @DVB_VB2_STATE_NONE, align 4
  %43 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %77

51:                                               ; preds = %3
  %52 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %52, i32 0, i32 5
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %55, i32 0, i32 4
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %58, i32 0, i32 3
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @DVB_VB2_NAME_MAX, align 4
  %66 = call i32 @strscpy(i32 %63, i8* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @DVB_VB2_STATE_INIT, align 4
  %71 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dvb_vb2_ctx*, %struct.dvb_vb2_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.dvb_vb2_ctx, %struct.dvb_vb2_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i32, ...) @dprintk(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %51, %41
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.dvb_vb2_ctx*, i32, i32) #1

declare dso_local i32 @vb2_core_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
