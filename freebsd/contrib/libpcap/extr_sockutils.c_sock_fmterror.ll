; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_fmterror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_fmterror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%s%s (code %d)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s (code %d)\00", align 1
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_MAX_WIDTH_MASK = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SOCK_ERRBUF_SIZE = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_fmterror(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %36

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @strerror(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27, i32 %28)
  br label %36

30:                                               ; preds = %18, %13
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %12, %30, %23
  ret void
}

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
