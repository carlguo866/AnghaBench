; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_StrToPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_StrToPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"StrToAddr: Unknown port or service %s/%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*)* @StrToPort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StrToPort(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.servent*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strtol(i8* %10, i8** %9, i32 10)
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.servent* @getservbyname(i8* %18, i8* %19)
  store %struct.servent* %20, %struct.servent** %8, align 8
  %21 = load %struct.servent*, %struct.servent** %8, align 8
  %22 = icmp eq %struct.servent* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @LogWARN, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @log_Printf(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  store i32 -1, i32* %4, align 4
  br label %35

28:                                               ; preds = %17
  %29 = load %struct.servent*, %struct.servent** %8, align 8
  %30 = getelementptr inbounds %struct.servent, %struct.servent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohs(i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
