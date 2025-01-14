; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_ssl_protocol_to_string.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_ssl_protocol_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_2_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@TLS1_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@SSL3_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"SSLv3\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ssl_protocol_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ssl_protocol_to_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TLS1_2_VERSION, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %27

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @TLS1_1_VERSION, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %26

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @TLS1_VERSION, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SSL3_VERSION, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %24

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %17
  br label %26

26:                                               ; preds = %25, %12
  br label %27

27:                                               ; preds = %26, %7
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
