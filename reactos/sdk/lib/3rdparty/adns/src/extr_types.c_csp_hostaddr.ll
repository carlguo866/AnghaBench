; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_csp_hostaddr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_csp_hostaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@adns_s_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_3__*)* @csp_hostaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @csp_hostaddr(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @csp_domain(i32* %10, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %3, align 8
  br label %85

19:                                               ; preds = %2
  %20 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @adns_errtypeabbrev(i32 %23)
  %25 = call i32 @CSP_ADDSTR(i8* %24)
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %32 = call i32 @CSP_ADDSTR(i8* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @adns_errabbrev(i32 %35)
  %37 = call i32 @CSP_ADDSTR(i8* %36)
  %38 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @adns_strerror(i32 %41)
  store i8* %42, i8** %6, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = trunc i64 %46 to i32
  %48 = call i64 @csp_qstring(i32* %43, i8* %44, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %19
  %52 = load i64, i64* %7, align 8
  store i64 %52, i64* %3, align 8
  br label %85

53:                                               ; preds = %19
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %76, %58
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i64 @csp_addr(i32* %68, i32* %74)
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %60

79:                                               ; preds = %60
  %80 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %83

81:                                               ; preds = %53
  %82 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %79
  %84 = load i64, i64* @adns_s_ok, align 8
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %83, %51, %17
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local i64 @csp_domain(i32*, i32) #1

declare dso_local i32 @CSP_ADDSTR(i8*) #1

declare dso_local i8* @adns_errtypeabbrev(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @adns_errabbrev(i32) #1

declare dso_local i8* @adns_strerror(i32) #1

declare dso_local i64 @csp_qstring(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @csp_addr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
