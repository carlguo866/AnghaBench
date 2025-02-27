; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_blame_insert_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_blame_insert_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_chain = type { %struct.blame* }
%struct.blame = type { i64, %struct.blame*, %struct.rev* }
%struct.rev = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.blame_chain*, %struct.rev*, i64, i64)* @blame_insert_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @blame_insert_range(%struct.blame_chain* %0, %struct.rev* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.blame_chain*, align 8
  %6 = alloca %struct.rev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.blame*, align 8
  %10 = alloca %struct.blame*, align 8
  %11 = alloca %struct.blame*, align 8
  %12 = alloca %struct.blame*, align 8
  store %struct.blame_chain* %0, %struct.blame_chain** %5, align 8
  store %struct.rev* %1, %struct.rev** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.blame_chain*, %struct.blame_chain** %5, align 8
  %14 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %13, i32 0, i32 0
  %15 = load %struct.blame*, %struct.blame** %14, align 8
  store %struct.blame* %15, %struct.blame** %9, align 8
  %16 = load %struct.blame*, %struct.blame** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.blame* @blame_find(%struct.blame* %16, i64 %17)
  store %struct.blame* %18, %struct.blame** %10, align 8
  %19 = load %struct.blame*, %struct.blame** %10, align 8
  %20 = getelementptr inbounds %struct.blame, %struct.blame* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %4
  %25 = load %struct.blame_chain*, %struct.blame_chain** %5, align 8
  %26 = load %struct.blame*, %struct.blame** %10, align 8
  %27 = getelementptr inbounds %struct.blame, %struct.blame* %26, i32 0, i32 2
  %28 = load %struct.rev*, %struct.rev** %27, align 8
  %29 = load %struct.blame*, %struct.blame** %10, align 8
  %30 = getelementptr inbounds %struct.blame, %struct.blame* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %31, %32
  %34 = call %struct.blame* @blame_create(%struct.blame_chain* %25, %struct.rev* %28, i64 %33)
  store %struct.blame* %34, %struct.blame** %11, align 8
  %35 = load %struct.rev*, %struct.rev** %6, align 8
  %36 = load %struct.blame*, %struct.blame** %10, align 8
  %37 = getelementptr inbounds %struct.blame, %struct.blame* %36, i32 0, i32 2
  store %struct.rev* %35, %struct.rev** %37, align 8
  %38 = load %struct.blame*, %struct.blame** %10, align 8
  %39 = getelementptr inbounds %struct.blame, %struct.blame* %38, i32 0, i32 1
  %40 = load %struct.blame*, %struct.blame** %39, align 8
  %41 = load %struct.blame*, %struct.blame** %11, align 8
  %42 = getelementptr inbounds %struct.blame, %struct.blame* %41, i32 0, i32 1
  store %struct.blame* %40, %struct.blame** %42, align 8
  %43 = load %struct.blame*, %struct.blame** %11, align 8
  %44 = load %struct.blame*, %struct.blame** %10, align 8
  %45 = getelementptr inbounds %struct.blame, %struct.blame* %44, i32 0, i32 1
  store %struct.blame* %43, %struct.blame** %45, align 8
  br label %70

46:                                               ; preds = %4
  %47 = load %struct.blame_chain*, %struct.blame_chain** %5, align 8
  %48 = load %struct.rev*, %struct.rev** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call %struct.blame* @blame_create(%struct.blame_chain* %47, %struct.rev* %48, i64 %49)
  store %struct.blame* %50, %struct.blame** %12, align 8
  %51 = load %struct.blame_chain*, %struct.blame_chain** %5, align 8
  %52 = load %struct.blame*, %struct.blame** %10, align 8
  %53 = getelementptr inbounds %struct.blame, %struct.blame* %52, i32 0, i32 2
  %54 = load %struct.rev*, %struct.rev** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %55, %56
  %58 = call %struct.blame* @blame_create(%struct.blame_chain* %51, %struct.rev* %54, i64 %57)
  store %struct.blame* %58, %struct.blame** %11, align 8
  %59 = load %struct.blame*, %struct.blame** %11, align 8
  %60 = load %struct.blame*, %struct.blame** %12, align 8
  %61 = getelementptr inbounds %struct.blame, %struct.blame* %60, i32 0, i32 1
  store %struct.blame* %59, %struct.blame** %61, align 8
  %62 = load %struct.blame*, %struct.blame** %10, align 8
  %63 = getelementptr inbounds %struct.blame, %struct.blame* %62, i32 0, i32 1
  %64 = load %struct.blame*, %struct.blame** %63, align 8
  %65 = load %struct.blame*, %struct.blame** %11, align 8
  %66 = getelementptr inbounds %struct.blame, %struct.blame* %65, i32 0, i32 1
  store %struct.blame* %64, %struct.blame** %66, align 8
  %67 = load %struct.blame*, %struct.blame** %12, align 8
  %68 = load %struct.blame*, %struct.blame** %10, align 8
  %69 = getelementptr inbounds %struct.blame, %struct.blame* %68, i32 0, i32 1
  store %struct.blame* %67, %struct.blame** %69, align 8
  br label %70

70:                                               ; preds = %46, %24
  %71 = load %struct.blame*, %struct.blame** %11, align 8
  %72 = getelementptr inbounds %struct.blame, %struct.blame* %71, i32 0, i32 1
  %73 = load %struct.blame*, %struct.blame** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @blame_adjust(%struct.blame* %73, i64 %74)
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %76
}

declare dso_local %struct.blame* @blame_find(%struct.blame*, i64) #1

declare dso_local %struct.blame* @blame_create(%struct.blame_chain*, %struct.rev*, i64) #1

declare dso_local i32 @blame_adjust(%struct.blame*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
