; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_fragmentation.h_batadv_frag_check_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_fragmentation.h_batadv_frag_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_frag_table_entry = type { i32, i32 }

@BATADV_FRAG_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_frag_table_entry*)* @batadv_frag_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_frag_check_entry(%struct.batadv_frag_table_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batadv_frag_table_entry*, align 8
  store %struct.batadv_frag_table_entry* %0, %struct.batadv_frag_table_entry** %3, align 8
  %4 = load %struct.batadv_frag_table_entry*, %struct.batadv_frag_table_entry** %3, align 8
  %5 = getelementptr inbounds %struct.batadv_frag_table_entry, %struct.batadv_frag_table_entry* %4, i32 0, i32 1
  %6 = call i32 @hlist_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.batadv_frag_table_entry*, %struct.batadv_frag_table_entry** %3, align 8
  %10 = getelementptr inbounds %struct.batadv_frag_table_entry, %struct.batadv_frag_table_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BATADV_FRAG_TIMEOUT, align 4
  %13 = call i64 @batadv_has_timed_out(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i64 @batadv_has_timed_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
