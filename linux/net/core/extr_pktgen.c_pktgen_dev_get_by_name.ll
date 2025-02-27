; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_dev_get_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_dev_get_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pktgen_net = type { i32 }
%struct.pktgen_dev = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.pktgen_net*, %struct.pktgen_dev*, i8*)* @pktgen_dev_get_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @pktgen_dev_get_by_name(%struct.pktgen_net* %0, %struct.pktgen_dev* %1, i8* %2) #0 {
  %4 = alloca %struct.pktgen_net*, align 8
  %5 = alloca %struct.pktgen_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pktgen_net* %0, %struct.pktgen_net** %4, align 8
  store %struct.pktgen_dev* %1, %struct.pktgen_dev** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = add nsw i32 %10, 5
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %37, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 64
  br i1 %22, label %23, label %40

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IFNAMSIZ, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %40

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %14, i64 %35
  store i8 %33, i8* %36, align 1
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %15

40:                                               ; preds = %27, %15
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %14, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load %struct.pktgen_net*, %struct.pktgen_net** %4, align 8
  %45 = getelementptr inbounds %struct.pktgen_net, %struct.pktgen_net* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.net_device* @dev_get_by_name(i32 %46, i8* %14)
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  ret %struct.net_device* %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net_device* @dev_get_by_name(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
