; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_alloc_sort_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_alloc_sort_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KMALLOC_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @gfs2_alloc_sort_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gfs2_alloc_sort_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @KMALLOC_MAX_SIZE, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = load i32, i32* @__GFP_NOWARN, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @kmalloc(i32 %8, i32 %11)
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = load i32, i32* @PAGE_KERNEL, align 4
  %20 = call i8* @__vmalloc(i32 %17, i32 %18, i32 %19)
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @__vmalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
