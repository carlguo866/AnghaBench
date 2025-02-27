; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_do_mdconfig_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_do_mdconfig_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"-t swap\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-t vnode\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-t malloc\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s -a %s%s -u %s%d\00", align 1
@path_mdconfig = common dso_local global i32 0, align 4
@mdname = common dso_local global i32 0, align 4
@unit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"mdconfig (attach) exited %s %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @do_mdconfig_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_mdconfig_attach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %11 [
    i32 129, label %8
    i32 128, label %9
    i32 130, label %10
  ]

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %13

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %13

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @abort() #3
  unreachable

13:                                               ; preds = %10, %9, %8
  %14 = load i32, i32* @path_mdconfig, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @mdname, align 4
  %18 = load i32, i32* @unit, align 4
  %19 = call i32 @run(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %14, i8* %15, i8* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @run_exitstr(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @run_exitnumber(i32 %25)
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %13
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @run(i32*, i8*, i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @errx(i32, i8*, i32, i32) #2

declare dso_local i32 @run_exitstr(i32) #2

declare dso_local i32 @run_exitnumber(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
