; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c_cxl_chardev_m_afu_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c_cxl_chardev_m_afu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@afu_master_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_chardev_m_afu_add(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %5 = call i32 @CXL_AFU_MKDEV_M(%struct.cxl_afu* %4)
  %6 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %7 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %6, i32 0, i32 1
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 0
  %10 = call i32 @cxl_add_chardev(%struct.cxl_afu* %3, i32 %5, i32* %7, i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* @afu_master_fops)
  ret i32 %10
}

declare dso_local i32 @cxl_add_chardev(%struct.cxl_afu*, i32, i32*, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @CXL_AFU_MKDEV_M(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
