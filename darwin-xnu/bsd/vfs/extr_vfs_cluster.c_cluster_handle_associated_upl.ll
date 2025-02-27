; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_handle_associated_upl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_handle_associated_upl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clios = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_ABORT_DUMP_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clios*, i32, i32, i32)* @cluster_handle_associated_upl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_handle_associated_upl(%struct.clios* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.clios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.clios* %0, %struct.clios** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %150

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @upl_associated_upl(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %150

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32* @UPL_GET_INTERNAL_PAGE_LIST(i32 %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @upl_page_get_mark(i32* %30, i32 0)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %114

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = call i32* @UPL_GET_INTERNAL_PAGE_LIST(i32 %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = icmp sge i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @upl_get_size(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %34
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @trunc_page_32(i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %34
  %56 = load %struct.clios*, %struct.clios** %5, align 8
  %57 = getelementptr inbounds %struct.clios, %struct.clios* %56, i32 0, i32 0
  %58 = call i32 @lck_mtx_lock_spin(i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = call i32 @upl_page_get_mark(i32* %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %61
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @PAGE_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = call i32 @upl_page_set_mark(i32* %69, i32 %72, i32 1)
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %68, %61, %55
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %13, align 4
  br label %102

83:                                               ; preds = %77
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @trunc_page_32(i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @upl_page_get_mark(i32* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %83
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @upl_page_set_mark(i32* %95, i32 %96, i32 1)
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %94, %83
  br label %102

102:                                              ; preds = %101, %81
  %103 = load %struct.clios*, %struct.clios** %5, align 8
  %104 = getelementptr inbounds %struct.clios, %struct.clios* %103, i32 0, i32 0
  %105 = call i32 @lck_mtx_unlock(i32* %104)
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %150

110:                                              ; preds = %102
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %8, align 4
  br label %129

114:                                              ; preds = %27
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @PAGE_MASK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @PAGE_MASK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  br label %129

129:                                              ; preds = %114, %110
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @UPL_ABORT_DUMP_PAGES, align 4
  %134 = call i32 @upl_abort_range(i32 %130, i32 %131, i32 %132, i32 %133, i64* %16)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %129
  %143 = load i64, i64* %16, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @upl_set_associated_upl(i32 %146, i32* null)
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @upl_deallocate(i32 %148)
  br label %150

150:                                              ; preds = %20, %26, %109, %145, %142, %129
  ret void
}

declare dso_local i32 @upl_associated_upl(i32) #1

declare dso_local i32* @UPL_GET_INTERNAL_PAGE_LIST(i32) #1

declare dso_local i32 @upl_page_get_mark(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @upl_get_size(i32) #1

declare dso_local i32 @trunc_page_32(i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @upl_page_set_mark(i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @upl_abort_range(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @upl_set_associated_upl(i32, i32*) #1

declare dso_local i32 @upl_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
