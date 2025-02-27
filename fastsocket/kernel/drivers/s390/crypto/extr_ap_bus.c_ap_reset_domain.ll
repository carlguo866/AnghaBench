; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_reset_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_reset_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ap_domain_index = common dso_local global i32 0, align 4
@AP_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ap_reset_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_reset_domain() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ap_domain_index, align 4
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %14, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @AP_DEVICES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @ap_domain_index, align 4
  %12 = call i32 @AP_MKQID(i32 %10, i32 %11)
  %13 = call i32 @ap_reset_queue(i32 %12)
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %5

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %0
  ret void
}

declare dso_local i32 @ap_reset_queue(i32) #1

declare dso_local i32 @AP_MKQID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
