; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_put_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_put_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_reply = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_reply*)* @lcs_put_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_put_reply(%struct.lcs_reply* %0) #0 {
  %2 = alloca %struct.lcs_reply*, align 8
  store %struct.lcs_reply* %0, %struct.lcs_reply** %2, align 8
  %3 = load %struct.lcs_reply*, %struct.lcs_reply** %2, align 8
  %4 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %3, i32 0, i32 0
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp sle i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.lcs_reply*, %struct.lcs_reply** %2, align 8
  %10 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %9, i32 0, i32 0
  %11 = call i64 @atomic_dec_and_test(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.lcs_reply*, %struct.lcs_reply** %2, align 8
  %15 = call i32 @kfree(%struct.lcs_reply* %14)
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kfree(%struct.lcs_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
