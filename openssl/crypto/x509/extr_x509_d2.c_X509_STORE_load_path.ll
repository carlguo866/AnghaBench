; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_d2.c_X509_STORE_load_path.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_d2.c_X509_STORE_load_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_FILETYPE_PEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_STORE_load_path(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 (...) @X509_LOOKUP_hash_dir()
  %12 = call i32* @X509_STORE_add_lookup(i32* %10, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load i32*, i32** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %18 = call i64 @X509_LOOKUP_add_dir(i32* %15, i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %9, %2
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_hash_dir(...) #1

declare dso_local i64 @X509_LOOKUP_add_dir(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
