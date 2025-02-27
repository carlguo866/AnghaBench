; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_debugfs.c_cxl_debugfs_add_adapter_regs_psl9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_debugfs.c_cxl_debugfs_add_adapter_regs_psl9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"fir1\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@CXL_PSL9_FIR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fir_mask\00", align 1
@CXL_PSL9_FIR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"fir_cntl\00", align 1
@CXL_PSL9_FIR_CNTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@CXL_PSL9_TRACECFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CXL_PSL9_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"xsl-debug\00", align 1
@CXL_XSL9_DBG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_debugfs_add_adapter_regs_psl9(%struct.cxl* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load i32, i32* @S_IRUSR, align 4
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = load %struct.cxl*, %struct.cxl** %3, align 8
  %8 = load i32, i32* @CXL_PSL9_FIR1, align 4
  %9 = call i32 @_cxl_p1_addr(%struct.cxl* %7, i32 %8)
  %10 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5, %struct.dentry* %6, i32 %9)
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = load %struct.cxl*, %struct.cxl** %3, align 8
  %13 = load i32, i32* @CXL_PSL9_FIR_MASK, align 4
  %14 = call i32 @_cxl_p1_addr(%struct.cxl* %12, i32 %13)
  %15 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %11, i32 %14)
  %16 = load i32, i32* @S_IRUSR, align 4
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = load %struct.cxl*, %struct.cxl** %3, align 8
  %19 = load i32, i32* @CXL_PSL9_FIR_CNTL, align 4
  %20 = call i32 @_cxl_p1_addr(%struct.cxl* %18, i32 %19)
  %21 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %16, %struct.dentry* %17, i32 %20)
  %22 = load i32, i32* @S_IRUSR, align 4
  %23 = load i32, i32* @S_IWUSR, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load %struct.cxl*, %struct.cxl** %3, align 8
  %27 = load i32, i32* @CXL_PSL9_TRACECFG, align 4
  %28 = call i32 @_cxl_p1_addr(%struct.cxl* %26, i32 %27)
  %29 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %24, %struct.dentry* %25, i32 %28)
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = load %struct.cxl*, %struct.cxl** %3, align 8
  %32 = load i32, i32* @CXL_PSL9_DEBUG, align 4
  %33 = call i32 @_cxl_p1_addr(%struct.cxl* %31, i32 %32)
  %34 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %30, i32 %33)
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = load %struct.cxl*, %struct.cxl** %3, align 8
  %37 = load i32, i32* @CXL_XSL9_DBG, align 4
  %38 = call i32 @_cxl_p1_addr(%struct.cxl* %36, i32 %37)
  %39 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 384, %struct.dentry* %35, i32 %38)
  ret void
}

declare dso_local i32 @debugfs_create_io_x64(i8*, i32, %struct.dentry*, i32) #1

declare dso_local i32 @_cxl_p1_addr(%struct.cxl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
