; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_sbuffer.c_sldns_buffer_new_frm_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_sbuffer.c_sldns_buffer_new_frm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sldns_buffer_new_frm_data(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 %13, i64* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @free(i64 %34)
  br label %36

36:                                               ; preds = %31, %26, %3
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @malloc(i64 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  br label %59

48:                                               ; preds = %36
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @memcpy(i64 %51, i8* %52, i64 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = call i32 @sldns_buffer_invariant(%struct.TYPE_4__* %57)
  br label %59

59:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @sldns_buffer_invariant(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
