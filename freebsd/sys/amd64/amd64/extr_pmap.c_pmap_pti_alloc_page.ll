; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_alloc_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pti_obj = common dso_local global i32 0, align 4
@pti_pg_idx = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pmap_pti_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pti_alloc_page() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @pti_obj, align 4
  %3 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %2)
  %4 = load i32, i32* @pti_obj, align 4
  %5 = load i32, i32* @pti_pg_idx, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @pti_pg_idx, align 4
  %7 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %8 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @vm_page_grab(i32 %4, i32 %5, i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @vm_page_grab(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
