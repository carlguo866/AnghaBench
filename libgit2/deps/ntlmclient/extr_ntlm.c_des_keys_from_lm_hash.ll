; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_des_keys_from_lm_hash.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_des_keys_from_lm_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32**)* @des_keys_from_lm_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des_keys_from_lm_hash(i32** %0, i32** %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca [3 x i32*], align 16
  store i32** %0, i32*** %3, align 8
  store i32** %1, i32*** %4, align 8
  %6 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 0
  %7 = load i32*, i32** %6, align 16
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32**, i32*** %4, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = call i32 @memcpy(i32* %8, i32* %12, i32 7)
  %14 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32**, i32*** %4, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 7
  %21 = call i32 @memcpy(i32* %16, i32* %20, i32 1)
  %22 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32**, i32*** %4, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @memcpy(i32* %24, i32* %28, i32 6)
  %30 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 2
  %31 = load i32*, i32** %30, align 16
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32**, i32*** %4, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  %37 = call i32 @memcpy(i32* %32, i32* %36, i32 2)
  %38 = load i32**, i32*** %3, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 0
  %41 = load i32*, i32** %40, align 16
  %42 = call i32 @des_key_from_password(i32** %39, i32* %41, i32 7)
  %43 = load i32**, i32*** %3, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @des_key_from_password(i32** %44, i32* %46, i32 7)
  %48 = load i32**, i32*** %3, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 2
  %50 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 2
  %51 = load i32*, i32** %50, align 16
  %52 = call i32 @des_key_from_password(i32** %49, i32* %51, i32 2)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @des_key_from_password(i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
