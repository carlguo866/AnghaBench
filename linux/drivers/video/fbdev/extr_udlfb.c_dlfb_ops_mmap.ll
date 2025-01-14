; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.vm_area_struct = type { i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mmap() framebuffer addr:%lu size:%lu\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @dlfb_ops_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_ops_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = shl i64 %23, %24
  store i64 %25, i64* %8, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 -1, %29
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %104

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %104

45:                                               ; preds = %35
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %50, %51
  %53 = icmp ugt i64 %46, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %104

57:                                               ; preds = %45
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %61, %62
  store i64 %63, i64* %10, align 8
  %64 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %102, %57
  %71 = load i64, i64* %7, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i64 @vmalloc_to_pfn(i8* %75)
  store i64 %76, i64* %9, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i32, i32* @PAGE_SHARED, align 4
  %82 = call i64 @remap_pfn_range(%struct.vm_area_struct* %77, i64 %78, i64 %79, i64 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %104

87:                                               ; preds = %73
  %88 = load i64, i64* @PAGE_SIZE, align 8
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @PAGE_SIZE, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = load i64, i64* %7, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %7, align 8
  br label %102

101:                                              ; preds = %87
  store i64 0, i64* %7, align 8
  br label %102

102:                                              ; preds = %101, %97
  br label %70

103:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %84, %54, %42, %32
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i64 @vmalloc_to_pfn(i8*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
