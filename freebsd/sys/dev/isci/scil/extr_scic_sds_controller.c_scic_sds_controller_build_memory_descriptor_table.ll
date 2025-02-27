; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_build_memory_descriptor_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_build_memory_descriptor_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@SCU_MDE_COMPLETION_QUEUE = common dso_local global i64 0, align 8
@SCU_COMPLETION_RAM_ALIGNMENT = common dso_local global i32 0, align 4
@SCI_MDE_ATTRIBUTE_CACHEABLE = common dso_local global i32 0, align 4
@SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS = common dso_local global i32 0, align 4
@SCU_MDE_REMOTE_NODE_CONTEXT = common dso_local global i64 0, align 8
@SCU_REMOTE_NODE_CONTEXT_ALIGNMENT = common dso_local global i32 0, align 4
@SCU_MDE_TASK_CONTEXT = common dso_local global i64 0, align 8
@SCU_TASK_CONTEXT_ALIGNMENT = common dso_local global i32 0, align 4
@SCU_MDE_UF_BUFFER = common dso_local global i64 0, align 8
@SCU_UNSOLICITED_FRAME_BUFFER_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_controller_build_memory_descriptor_table(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @SCU_MDE_COMPLETION_QUEUE, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* @SCU_COMPLETION_RAM_ALIGNMENT, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @SCI_MDE_ATTRIBUTE_CACHEABLE, align 4
  %16 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @sci_base_mde_construct(i32* %7, i32 %8, i32 %14, i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @SCU_MDE_REMOTE_NODE_CONTEXT, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* @SCU_REMOTE_NODE_CONTEXT_ALIGNMENT, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %32 = call i32 @sci_base_mde_construct(i32* %23, i32 %24, i32 %30, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @SCU_MDE_TASK_CONTEXT, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* @SCU_TASK_CONTEXT_ALIGNMENT, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %46 = call i32 @sci_base_mde_construct(i32* %37, i32 %38, i32 %44, i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = call i32 @scic_sds_unsolicited_frame_control_set_address_table_count(i32* %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @SCU_MDE_UF_BUFFER, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* @SCU_UNSOLICITED_FRAME_BUFFER_ALIGNMENT, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @scic_sds_unsolicited_frame_control_get_mde_size(i32 %58)
  %60 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %61 = call i32 @sci_base_mde_construct(i32* %54, i32 %55, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @sci_base_mde_construct(i32*, i32, i32, i32) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_set_address_table_count(i32*) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_get_mde_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
