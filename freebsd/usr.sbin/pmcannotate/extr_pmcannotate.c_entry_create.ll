; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_entry_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcannotate/extr_pmcannotate.c_entry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i64, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (i8*, i64, i64, i64)* @entry_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @entry_create(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.entry*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call %struct.entry* @calloc(i32 1, i32 40)
  store %struct.entry* %11, %struct.entry** %10, align 8
  %12 = load %struct.entry*, %struct.entry** %10, align 8
  %13 = icmp eq %struct.entry* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.entry* null, %struct.entry** %5, align 8
  br label %40

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* @strdup(i8* %16)
  %18 = load %struct.entry*, %struct.entry** %10, align 8
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 4
  store i32* %17, i32** %19, align 8
  %20 = load %struct.entry*, %struct.entry** %10, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.entry*, %struct.entry** %10, align 8
  %26 = call i32 @free(%struct.entry* %25)
  store %struct.entry* null, %struct.entry** %5, align 8
  br label %40

27:                                               ; preds = %15
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.entry*, %struct.entry** %10, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.entry*, %struct.entry** %10, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.entry*, %struct.entry** %10, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.entry*, %struct.entry** %10, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 3
  store i32 1, i32* %38, align 8
  %39 = load %struct.entry*, %struct.entry** %10, align 8
  store %struct.entry* %39, %struct.entry** %5, align 8
  br label %40

40:                                               ; preds = %27, %24, %14
  %41 = load %struct.entry*, %struct.entry** %5, align 8
  ret %struct.entry* %41
}

declare dso_local %struct.entry* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
