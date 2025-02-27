; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_seq_list_pop.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_seq_list_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_seq_list = type { i64, i64, i64*, i8* }

@L2CAP_SEQ_LIST_CLEAR = common dso_local global i8* null, align 8
@L2CAP_SEQ_LIST_TAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.l2cap_seq_list*)* @l2cap_seq_list_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @l2cap_seq_list_pop(%struct.l2cap_seq_list* %0) #0 {
  %2 = alloca %struct.l2cap_seq_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.l2cap_seq_list* %0, %struct.l2cap_seq_list** %2, align 8
  %5 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %6 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %9 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %12 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %14, %15
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %20 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** @L2CAP_SEQ_LIST_CLEAR, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %24 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %26, %27
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  store i64 %22, i64* %29, align 8
  %30 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %31 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @L2CAP_SEQ_LIST_TAIL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load i8*, i8** @L2CAP_SEQ_LIST_CLEAR, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %39 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i8*, i8** @L2CAP_SEQ_LIST_CLEAR, align 8
  %41 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %42 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %35, %1
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
