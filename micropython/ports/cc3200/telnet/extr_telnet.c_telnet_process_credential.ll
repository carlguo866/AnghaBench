; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_process_credential.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_process_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64* }

@telnet_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SERVERS_USER_PASS_LEN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @telnet_process_credential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telnet_process_credential(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %10 = add nsw i64 %9, %8
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %12 = load i64, i64* @SERVERS_USER_PASS_LEN_MAX, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @SERVERS_USER_PASS_LEN_MAX, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 1), align 8
  %18 = load i64, i64* @SERVERS_USER_PASS_LEN_MAX, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64* %19, i64** %6, align 8
  %20 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %22 = call i64* @memchr(i64* %20, i8 signext 13, i64 %21)
  store i64* %22, i64** %6, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %26 = load i64, i64* @SERVERS_USER_PASS_LEN_MAX, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24, %16
  %29 = load i64*, i64** %6, align 8
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 1), align 8
  %31 = ptrtoint i64* %29 to i64
  %32 = ptrtoint i64* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  store i64 %34, i64* %7, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load i8*, i8** %4, align 8
  %39 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 1), align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @MAX(i64 %40, i32 %42)
  %44 = call i64 @memcmp(i8* %38, i64* %39, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %49

47:                                               ; preds = %37, %28
  store i32 -1, i32* %3, align 4
  br label %49

48:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %46
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64* @memchr(i64*, i8 signext, i64) #1

declare dso_local i64 @memcmp(i8*, i64*, i32) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
