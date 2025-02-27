; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_id_tbl = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_id_tbl*, i32)* @cnic_free_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_free_id(%struct.cnic_id_tbl* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_id_tbl*, align 8
  %4 = alloca i32, align 4
  store %struct.cnic_id_tbl* %0, %struct.cnic_id_tbl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %28

8:                                                ; preds = %2
  %9 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %3, align 8
  %10 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %3, align 8
  %18 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  br label %28

22:                                               ; preds = %8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %3, align 8
  %25 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clear_bit(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %21, %7
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
