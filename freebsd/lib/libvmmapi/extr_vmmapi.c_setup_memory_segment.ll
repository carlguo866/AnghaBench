; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_setup_memory_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_setup_memory_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32, i32 }

@VM_SYSMEM = common dso_local global i32 0, align 4
@PROT_ALL = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@VM_MEM_F_INCORE = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@PROT_RW = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i64, i8*)* @setup_memory_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_memory_segment(%struct.vmctx* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @VM_SYSMEM, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @PROT_ALL, align 4
  %19 = call i32 @vm_mmap_memseg(%struct.vmctx* %13, i32 %14, i32 %15, i32 %16, i64 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %56

24:                                               ; preds = %4
  %25 = load i32, i32* @MAP_SHARED, align 4
  %26 = load i32, i32* @MAP_FIXED, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %29 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VM_MEM_F_INCORE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @MAP_NOCORE, align 4
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34, %24
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @PROT_RW, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %47 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @mmap(i8* %42, i64 %43, i32 %44, i32 %45, i32 %48, i32 %49)
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** @MAP_FAILED, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %56

55:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %54, %22
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @vm_mmap_memseg(%struct.vmctx*, i32, i32, i32, i64, i32) #1

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
