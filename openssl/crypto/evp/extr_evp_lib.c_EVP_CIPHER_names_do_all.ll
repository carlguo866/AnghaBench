; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_names_do_all.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_names_do_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EVP_CIPHER_names_do_all(%struct.TYPE_3__* %0, void (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca void (i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store void (i8*, i8*)* %1, void (i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @evp_names_do_all(i32* %14, i32 %17, void (i8*, i8*)* %18, i8* %19)
  br label %21

21:                                               ; preds = %11, %3
  ret void
}

declare dso_local i32 @evp_names_do_all(i32*, i32, void (i8*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
