; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_proto.c_proto_Prepend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_proto.c_proto_Prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @proto_Prepend(%struct.mbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.mbuf* @m_prepend(%struct.mbuf* %23, i32* %25, i32 1, i32 %26)
  store %struct.mbuf* %27, %struct.mbuf** %5, align 8
  br label %33

28:                                               ; preds = %18, %4
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.mbuf* @m_prepend(%struct.mbuf* %29, i32* %30, i32 2, i32 %31)
  store %struct.mbuf* %32, %struct.mbuf** %5, align 8
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %34
}

declare dso_local %struct.mbuf* @m_prepend(%struct.mbuf*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
