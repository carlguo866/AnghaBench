; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_remove_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_remove_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"remove_hash(), stripe %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @remove_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_hash(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %3 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %4 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %8 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %7, i32 0, i32 0
  %9 = call i32 @hlist_del_init(i32* %8)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @hlist_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
