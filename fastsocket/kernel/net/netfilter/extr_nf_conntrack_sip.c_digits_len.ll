; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_digits_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_digits_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, i8*, i32*)* @digits_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digits_len(%struct.nf_conn* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %21, %4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isdigit(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %10

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
