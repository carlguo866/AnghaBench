; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_limits_conf.c_find_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_limits_conf.c_find_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.limit = type { i32* }

@limits = common dso_local global %struct.limit* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.limit* (i8*)* @find_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.limit* @find_limit(i8* %0) #0 {
  %2 = alloca %struct.limit*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.limit*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.limit*, %struct.limit** @limits, align 8
  store %struct.limit* %5, %struct.limit** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.limit*, %struct.limit** %4, align 8
  %8 = getelementptr inbounds %struct.limit, %struct.limit* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.limit*, %struct.limit** %4, align 8
  %14 = getelementptr inbounds %struct.limit, %struct.limit* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @strcasecmp(i8* %12, i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load %struct.limit*, %struct.limit** %4, align 8
  store %struct.limit* %19, %struct.limit** %2, align 8
  br label %25

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.limit*, %struct.limit** %4, align 8
  %23 = getelementptr inbounds %struct.limit, %struct.limit* %22, i32 1
  store %struct.limit* %23, %struct.limit** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.limit* null, %struct.limit** %2, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.limit*, %struct.limit** %2, align 8
  ret %struct.limit* %26
}

declare dso_local i64 @strcasecmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
