; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_mkregtable.c_list_del_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_mkregtable.c_list_del_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*)* @list_del_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_del_init(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  %3 = load %struct.list_head*, %struct.list_head** %2, align 8
  %4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.list_head*, %struct.list_head** %2, align 8
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @__list_del(i32 %5, i32 %8)
  %10 = load %struct.list_head*, %struct.list_head** %2, align 8
  %11 = call i32 @INIT_LIST_HEAD(%struct.list_head* %10)
  ret void
}

declare dso_local i32 @__list_del(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
