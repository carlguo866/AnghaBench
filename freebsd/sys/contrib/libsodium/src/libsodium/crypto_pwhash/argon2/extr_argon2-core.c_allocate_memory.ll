; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-core.c_allocate_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-core.c_allocate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i8* }

@ARGON2_MEMORY_ALLOCATION_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ARGON2_OK = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__**, i32)* @allocate_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_memory(%struct.TYPE_3__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %11 = icmp eq %struct.TYPE_3__** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ARGON2_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %85

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %21, %23
  %25 = icmp ne i64 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %14
  %27 = load i32, i32* @ARGON2_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %20
  %29 = call i8* @malloc(i64 24)
  %30 = bitcast i8* %29 to %struct.TYPE_3__*
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ARGON2_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %85

37:                                               ; preds = %28
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i8* null, i8** %43, align 8
  store i32* null, i32** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 63
  %46 = load i64, i64* %8, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  store i8* null, i8** %6, align 8
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* @errno, align 4
  br label %66

50:                                               ; preds = %37
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 63
  %53 = call i8* @malloc(i64 %52)
  store i8* %53, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr i8, i8* %56, i64 63
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = and i64 %59, 63
  %61 = load i8*, i8** %9, align 8
  %62 = sub i64 0, %60
  %63 = getelementptr i8, i8* %61, i64 %62
  store i8* %63, i8** %9, align 8
  %64 = call i32 @memcpy(i32** %7, i8** %9, i32 8)
  br label %65

65:                                               ; preds = %55, %50
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i8*, i8** %6, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @ARGON2_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %85

71:                                               ; preds = %66
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32* %76, i32** %79, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load i32, i32* @ARGON2_OK, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %71, %69, %35, %26, %12
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i32**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
