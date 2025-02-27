; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yppoll/extr_yppoll.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yppoll/extr_yppoll.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"h:d:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no such map %s: reason: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Map %s has order number %lld. %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"The master server is %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %14 = call i32 @yp_get_default_domain(i8** %6)
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %11, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %26 [
    i32 100, label %22
    i32 104, label %24
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** %6, align 8
  br label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** %7, align 8
  br label %28

26:                                               ; preds = %20
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %24, %22
  br label %15

29:                                               ; preds = %15
  %30 = load i32, i32* @optind, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @usage()
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* @optind, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @get_remote_info(i8* %45, i8* %46, i8* %47, i32* %10, i8** %9)
  store i32 %48, i32* %12, align 4
  br label %60

49:                                               ; preds = %36
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @yp_order(i8* %50, i8* %51, i32* %10)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @yp_master(i8* %56, i8* %57, i8** %9)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @yperr_string(i32 %65)
  %67 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 @ctime(i32* %13)
  %74 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %70, i64 %72, i32 %73)
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @yp_get_default_domain(i8**) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @get_remote_info(i8*, i8*, i8*, i32*, i8**) #1

declare dso_local i32 @yp_order(i8*, i8*, i32*) #1

declare dso_local i32 @yp_master(i8*, i8*, i8**) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @yperr_string(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @ctime(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
