; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_request_bts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_request_bts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_tracer = type { %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.bts_tracer* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.task_struct = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ds_bts = common dso_local global i32 0, align 4
@ds_lock = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@bts_read = common dso_local global i32 0, align 4
@bts_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bts_tracer* (%struct.task_struct*, i32, i8*, i64, i64, i64, i32)* @ds_request_bts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bts_tracer* @ds_request_bts(%struct.task_struct* %0, i32 %1, i8* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.bts_tracer*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bts_tracer*, align 8
  %17 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %17, align 4
  %20 = load i64, i64* %13, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  br label %123

23:                                               ; preds = %7
  %24 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %25 = call i32 @get_tracer(%struct.task_struct* %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %123

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.bts_tracer* @kzalloc(i32 32, i32 %32)
  store %struct.bts_tracer* %33, %struct.bts_tracer** %16, align 8
  %34 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %35 = icmp ne %struct.bts_tracer* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %120

37:                                               ; preds = %29
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %40 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %42 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %41, i32 0, i32 0
  %43 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %44 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* @ds_bts, align 4
  %47 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @ds_request(%struct.TYPE_8__* %42, i32* %45, i32 %46, %struct.task_struct* %47, i32 %48, i8* %49, i64 %50, i64 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %117

56:                                               ; preds = %37
  %57 = call i32 @spin_lock_irq(i32* @ds_lock)
  %58 = load i32, i32* @EPERM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %17, align 4
  %60 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %61 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.bts_tracer*, %struct.bts_tracer** %64, align 8
  %66 = icmp ne %struct.bts_tracer* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %110

68:                                               ; preds = %56
  %69 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %70 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %71 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store %struct.bts_tracer* %69, %struct.bts_tracer** %74, align 8
  %75 = call i32 @spin_unlock_irq(i32* @ds_lock)
  %76 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %77 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* @ds_bts, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @ds_init_ds_trace(i32* %78, i32 %79, i8* %80, i64 %81, i64 %82, i32 %83)
  %85 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %86 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %90 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* @ds_bts, align 4
  %93 = call i32 @ds_write_config(%struct.TYPE_7__* %88, i32* %91, i32 %92)
  %94 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %95 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = call i32 @ds_install_ds_area(%struct.TYPE_7__* %97)
  %99 = load i32, i32* @bts_read, align 4
  %100 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %101 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @bts_write, align 4
  %104 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %105 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %108 = call i32 @ds_resume_bts(%struct.bts_tracer* %107)
  %109 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  store %struct.bts_tracer* %109, %struct.bts_tracer** %8, align 8
  br label %126

110:                                              ; preds = %67
  %111 = call i32 @spin_unlock_irq(i32* @ds_lock)
  %112 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %113 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = call i32 @ds_put_context(%struct.TYPE_7__* %115)
  br label %117

117:                                              ; preds = %110, %55
  %118 = load %struct.bts_tracer*, %struct.bts_tracer** %16, align 8
  %119 = call i32 @kfree(%struct.bts_tracer* %118)
  br label %120

120:                                              ; preds = %117, %36
  %121 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %122 = call i32 @put_tracer(%struct.task_struct* %121)
  br label %123

123:                                              ; preds = %120, %28, %22
  %124 = load i32, i32* %17, align 4
  %125 = call %struct.bts_tracer* @ERR_PTR(i32 %124)
  store %struct.bts_tracer* %125, %struct.bts_tracer** %8, align 8
  br label %126

126:                                              ; preds = %123, %68
  %127 = load %struct.bts_tracer*, %struct.bts_tracer** %8, align 8
  ret %struct.bts_tracer* %127
}

declare dso_local i32 @get_tracer(%struct.task_struct*) #1

declare dso_local %struct.bts_tracer* @kzalloc(i32, i32) #1

declare dso_local i32 @ds_request(%struct.TYPE_8__*, i32*, i32, %struct.task_struct*, i32, i8*, i64, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ds_init_ds_trace(i32*, i32, i8*, i64, i64, i32) #1

declare dso_local i32 @ds_write_config(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ds_install_ds_area(%struct.TYPE_7__*) #1

declare dso_local i32 @ds_resume_bts(%struct.bts_tracer*) #1

declare dso_local i32 @ds_put_context(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.bts_tracer*) #1

declare dso_local i32 @put_tracer(%struct.task_struct*) #1

declare dso_local %struct.bts_tracer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
