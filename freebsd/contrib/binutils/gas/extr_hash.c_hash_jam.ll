; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_jam.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_jam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_control = type { i32, i32, i32 }
%struct.hash_entry = type { i8*, i64, %struct.hash_entry*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_jam(%struct.hash_control* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hash_control*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hash_entry*, align 8
  %8 = alloca %struct.hash_entry**, align 8
  %9 = alloca i64, align 8
  store %struct.hash_control* %0, %struct.hash_control** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.hash_control*, %struct.hash_control** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call %struct.hash_entry* @hash_lookup(%struct.hash_control* %10, i8* %11, i32 %13, %struct.hash_entry*** %8, i64* %9)
  store %struct.hash_entry* %14, %struct.hash_entry** %7, align 8
  %15 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %16 = icmp ne %struct.hash_entry* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.hash_control*, %struct.hash_control** %4, align 8
  %23 = getelementptr inbounds %struct.hash_control, %struct.hash_control* %22, i32 0, i32 0
  %24 = call i64 @obstack_alloc(i32* %23, i32 32)
  %25 = inttoptr i64 %24 to %struct.hash_entry*
  store %struct.hash_entry* %25, %struct.hash_entry** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.hash_entry**, %struct.hash_entry*** %8, align 8
  %36 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8
  %37 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %37, i32 0, i32 2
  store %struct.hash_entry* %36, %struct.hash_entry** %38, align 8
  %39 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %40 = load %struct.hash_entry**, %struct.hash_entry*** %8, align 8
  store %struct.hash_entry* %39, %struct.hash_entry** %40, align 8
  br label %41

41:                                               ; preds = %21, %17
  ret i8* null
}

declare dso_local %struct.hash_entry* @hash_lookup(%struct.hash_control*, i8*, i32, %struct.hash_entry***, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
