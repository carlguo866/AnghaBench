; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_ClientSessionOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_ClientSessionOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GNUTLS_CLIENT = common dso_local global i32 0, align 4
@GNUTLS_NAME_DNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*, i8*, i8**)* @gnutls_ClientSessionOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gnutls_ClientSessionOpen(%struct.TYPE_7__* %0, i32* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = call i32 @VLC_OBJECT(%struct.TYPE_7__* %12)
  %14 = load i32, i32* @GNUTLS_CLIENT, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = call %struct.TYPE_6__* @gnutls_SessionOpen(i32 %13, i32 %14, i32 %17, i32* %18, i8** %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %45

24:                                               ; preds = %4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @gnutls_dh_set_prime_bits(i32 %28, i32 1024)
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @GNUTLS_NAME_DNS, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @gnutls_server_name_set(i32 %36, i32 %37, i8* %38, i32 %40)
  br label %42

42:                                               ; preds = %35, %24
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %42, %23
  %46 = load i32*, i32** %5, align 8
  ret i32* %46
}

declare dso_local %struct.TYPE_6__* @gnutls_SessionOpen(i32, i32, i32, i32*, i8**) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_7__*) #1

declare dso_local i32 @gnutls_dh_set_prime_bits(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @gnutls_server_name_set(i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
