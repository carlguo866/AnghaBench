; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dsa_kmgmt.c_dsa_importkey.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dsa_kmgmt.c_dsa_importkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @dsa_importkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dsa_importkey(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i8* (...) @DSA_new()
  store i8* %6, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @params_to_key(i8* %9, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @DSA_free(i8* %14)
  store i8* null, i8** %5, align 8
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i8*, i8** %5, align 8
  ret i8* %17
}

declare dso_local i8* @DSA_new(...) #1

declare dso_local i32 @params_to_key(i8*, i32*) #1

declare dso_local i32 @DSA_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
