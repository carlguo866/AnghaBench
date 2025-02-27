; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_sufficient_security.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_sufficient_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, i32, i32, i32 }

@BT_SECURITY_LOW = common dso_local global i64 0, align 8
@SMP_USE_LTK = common dso_local global i32 0, align 4
@HCI_CONN_STK_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_sufficient_security(%struct.hci_conn* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @BT_SECURITY_LOW, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %45

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SMP_USE_LTK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32, i32* @HCI_CONN_STK_ENCRYPT, align 4
  %18 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 5
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %24 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %27 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %26, i32 0, i32 3
  %28 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @hci_find_ltk(i32 %25, i32* %27, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %45

37:                                               ; preds = %22, %16, %12
  %38 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %45

44:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43, %36, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @hci_find_ltk(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
