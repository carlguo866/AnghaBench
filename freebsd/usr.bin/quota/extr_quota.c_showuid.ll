; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_showuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_showuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"(no account)\00", align 1
@USRQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @showuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @showuid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.passwd* @getpwuid(i32 %5)
  store %struct.passwd* %6, %struct.passwd** %3, align 8
  %7 = load %struct.passwd*, %struct.passwd** %3, align 8
  %8 = icmp eq %struct.passwd* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.passwd*, %struct.passwd** %3, align 8
  %12 = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  br label %14

14:                                               ; preds = %10, %9
  %15 = load i32, i32* @USRQUOTA, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @showquotas(i32 %15, i32 %16, i8* %17)
  ret i32 %18
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @showquotas(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
