; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_get_cipher.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_get_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"RC4-MD5\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RC4-SHA\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ADH-AES-128-SHA256\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ADH-AES-128-SHA\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"AES-256-SHA\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"AES-256-SHA256\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"AES-128-SHA\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"AES-128-SHA256\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_get_cipher(%struct.tlsv1_client* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %10 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %21 [
    i32 129, label %13
    i32 128, label %14
    i32 136, label %15
    i32 137, label %16
    i32 132, label %17
    i32 131, label %18
    i32 134, label %19
    i32 133, label %20
  ]

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %22

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %22

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %22

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %22

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %22

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %22

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %22

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %29

22:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @os_memcpy(i32* %24, i32* %26, i64 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
