; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_proto_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_proto_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ip_vs_proto_name.buf = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SCTP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ICMP\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"IP_%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ip_vs_proto_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %10 [
    i32 131, label %5
    i32 128, label %6
    i32 129, label %7
    i32 130, label %8
    i32 133, label %9
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %13

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %13

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %13

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %13

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @ip_vs_proto_name.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @ip_vs_proto_name.buf, i64 0, i64 0), i8** %2, align 8
  br label %13

13:                                               ; preds = %10, %9, %8, %7, %6, %5
  %14 = load i8*, i8** %2, align 8
  ret i8* %14
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
