; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_iwcm_deref_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_iwcm_deref_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*)* @iwcm_deref_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwcm_deref_id(%struct.iwcm_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwcm_id_private*, align 8
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %3, align 8
  %4 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %5 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %4, i32 0, i32 1
  %6 = call i64 @atomic_read(i32* %5)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %11 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %10, i32 0, i32 1
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %16 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %15, i32 0, i32 0
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %3, align 8
  %23 = call i32 @free_cm_id(%struct.iwcm_id_private* %22)
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @free_cm_id(%struct.iwcm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
