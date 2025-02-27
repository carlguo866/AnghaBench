; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2-sw.c_blake2s_xform_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2-sw.c_blake2s_xform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blake2s_xform_ctx = type { i64, i32, i32 }

@BLAKE2S_OUTBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"blake2s_init_key: invalid arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @blake2s_xform_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blake2s_xform_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.blake2s_xform_ctx*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.blake2s_xform_ctx*
  store %struct.blake2s_xform_ctx* %6, %struct.blake2s_xform_ctx** %3, align 8
  %7 = load %struct.blake2s_xform_ctx*, %struct.blake2s_xform_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.blake2s_xform_ctx, %struct.blake2s_xform_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.blake2s_xform_ctx*, %struct.blake2s_xform_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.blake2s_xform_ctx, %struct.blake2s_xform_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* @BLAKE2S_OUTBYTES, align 4
  %15 = load %struct.blake2s_xform_ctx*, %struct.blake2s_xform_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.blake2s_xform_ctx, %struct.blake2s_xform_ctx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.blake2s_xform_ctx*, %struct.blake2s_xform_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.blake2s_xform_ctx, %struct.blake2s_xform_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @blake2s_init_key_ref(i32* %13, i32 %14, i32 %17, i64 %20)
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.blake2s_xform_ctx*, %struct.blake2s_xform_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.blake2s_xform_ctx, %struct.blake2s_xform_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* @BLAKE2S_OUTBYTES, align 4
  %26 = call i32 @blake2s_init_ref(i32* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %11
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @blake2s_init_key_ref(i32*, i32, i32, i64) #1

declare dso_local i32 @blake2s_init_ref(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
