; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_parity_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_parity_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_parity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_parity*)* @scrub_parity_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_parity_put(%struct.scrub_parity* %0) #0 {
  %2 = alloca %struct.scrub_parity*, align 8
  store %struct.scrub_parity* %0, %struct.scrub_parity** %2, align 8
  %3 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %4 = getelementptr inbounds %struct.scrub_parity, %struct.scrub_parity* %3, i32 0, i32 0
  %5 = call i32 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.scrub_parity*, %struct.scrub_parity** %2, align 8
  %10 = call i32 @scrub_parity_check_and_repair(%struct.scrub_parity* %9)
  br label %11

11:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @scrub_parity_check_and_repair(%struct.scrub_parity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
