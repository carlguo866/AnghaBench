; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_free_slob_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_free_slob_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slob_page = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slob_page*)* @free_slob_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_slob_page(%struct.slob_page* %0) #0 {
  %2 = alloca %struct.slob_page*, align 8
  store %struct.slob_page* %0, %struct.slob_page** %2, align 8
  %3 = load %struct.slob_page*, %struct.slob_page** %2, align 8
  %4 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %3, i32 0, i32 0
  %5 = call i32 @reset_page_mapcount(%struct.TYPE_2__* %4)
  %6 = load %struct.slob_page*, %struct.slob_page** %2, align 8
  %7 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  ret void
}

declare dso_local i32 @reset_page_mapcount(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
